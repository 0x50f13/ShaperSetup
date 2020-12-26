USAGE="[client|server|start|all]"
target_server(){
   require_command docker
   change_dir src/server/
   exec docker build -t server .
   leave_dir
}

target_client(){
   pwd
   require_command docker
   change_dir src/client/
   exec docker build -t client .
   leave_dir
}

target_start(){
    require_command docker-compose
    exec docker-compose up
}

target_all(){
    target_server
    target_client
    target_start
}   
