def find_user_id_by_name(name:str)-> int| None:
    users = {"altnight":1,"susumuis":2}
    return users.get(name)
