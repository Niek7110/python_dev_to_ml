import dataclasses


@dataclasses.dataclass

class User:
    id:int
    name:str

def print_user(user:User) -> None:
    print(user.name)
