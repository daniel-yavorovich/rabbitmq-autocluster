%%==============================================================================
%% @author Gavin M. Roy <gavinr@aweber.com>
%% @copyright 2015 AWeber Communications
%% @end
%%==============================================================================

-record(config, {key, os, default, type}).

-define(CONFIG_MAP,
        [{config, backend,              "AUTOCLUSTER_TYPE",      consul,      atom},
         {config, longname,             "RABBITMQ_LONGNAME",     false,       atom},
         {config, cluster_name,         "CLUSTER_NAME",          "undefined", string},
         {config, consul_acl,           "CONSUL_ACL",            "undefined", string},
         {config, consul_scheme,        "CONSUL_SCHEME",         "http",      string},
         {config, consul_host,          "CONSUL_HOST",           "localhost", string},
         {config, consul_port,          "CONSUL_PORT",           8500,        integer},
         {config, consul_service,       "CONSUL_SERVICE",        "rabbitmq",  string},
         {config, consul_service_port,  "CONSUL_SERVICE_PORT",   5672,        integer},
         {config, consul_service_prefix,"CONSUL_SERVICE_PREFIX", undefined,   string},
         {config, consul_service_ttl,   "CONSUL_SERVICE_TTL",    30,          integer}]).

-define(CONSUL_CHECK_NOTES, list_to_atom("RabbitMQ Auto-Cluster Plugin TTL Check")).
