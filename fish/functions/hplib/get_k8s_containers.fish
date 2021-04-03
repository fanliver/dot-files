function get_k8s_containers -d "Get all containers of a pod"
    argparse 'n/namespace=' 'p/pod=' -- $argv

    if set -q _flag_namespace
        set arg_namespace '-n' $_flag_namespace
    end

    if set -q _flag_pod
        set arg_pod '-p' $_flag_pod
    else
        err "Missing pod. Aborted."
        return 1
    end

    kubectl get pods $_flag_pod $arg_namespace -o jsonpath='{.spec.containers[*].name}' | string split ' ' --no-empty
end
