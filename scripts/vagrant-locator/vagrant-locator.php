#! /Users/jordan.josiah-walker/.phpbrew/php/php-7.2.0/bin/php

<?php

require_once 'vendor/autoload.php';

/**
 * Slices file from the array
 *
 * @return \Illuminate\Support\Collection
 */
function command_args ()
{
    global $argv;

    $args = new \Illuminate\Support\Collection($argv);

    return $args
        ->slice(1)
        ->values();
}

/**
 * @return string
 */
function vagrant_directory (): string
{
   return isset($_SERVER['VAGRANT_HOME'])
        ? $_SERVER['VAGRANT_HOME']
        : $_SERVER['HOME'] . '/.vagrant.d';
}

/**
 * @param string $target
 * @param string $base
 * @param bool   $contents
 *
 * @return string
 */
function path (string $target, string $base = __DIR__, bool $contents = false): string
{
    $path = "$base/$target";

    if ($contents) {
        return file_get_contents($path);
    }

    return $path;
}

/**
 * @return array Machines
 */
function machines (): array
{
    $contents = path('data/machine-index/index', vagrant_directory(), true);

    $json = json_decode($contents, JSON_OBJECT_AS_ARRAY);

    return $json['machines'];
}

/**
 * @param array $machines_array
 *
 * @return \Illuminate\Support\Collection
 */
function format_machines (array $machines_array): \Illuminate\Support\Collection
{
    $machines_collection = new \Illuminate\Support\Collection($machines_array);

    $machines = $machines_collection->map(function ($item, $key) {
        $path = $item['vagrantfile_path'];

        $explode = explode('/', $path);

        return [
            'id' => $key,
            'path' => $path,
            'name' => end($explode),
        ];
    });

    return $machines->keyBy('name');
}

function no_args ()
{
    die ('No commands given: Required: <vagrant command> <vagrant name>');
}

/**
 * @param array $args
 */
function execute (array $args)
{
    if (count($args) === 0) {
        no_args();
    }

    $machines = format_machines(machines());

    $machine_id = isset($args[1]) ? $machines->get($args[1])['id'] : '';
    $trimmed_machine_id = substr($machine_id, 0, 7);

    $command = "vagrant $args[0] $trimmed_machine_id";

    switch ($args[0]) {
        case ('ssh'):
            exit ($command);
            break;
        case ('edit'):
            $output = shell_exec("code {$machines->get($args[1])['path']}");
            break;
        case ('cd'):
            $output = shell_exec("cd {$machines->get($args[1])['path']}");
            break;
        default:
            $output = shell_exec($command);
    }

    exit ($output);
}

execute(command_args()->all());
