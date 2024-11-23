def display_with_repeat(
    v: str,
    n: int,
    dobule: bool = False,
) -> str:
    if dobule:
        n = n * 2
    return v * n


def to_list(d: dict[str, int]) -> list[tuple[str, int]]:
    return list(d.items())
