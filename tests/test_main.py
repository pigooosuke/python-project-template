import pytest
from main import sum_number


@pytest.mark.parametrize(
    "val1, val2, expected",
    [
        (3, 4, 7),
    ],
)
def test_sum_number(val1: int, val2: int, expected: int) -> None:
    assert sum_number(val1, val2) == expected
