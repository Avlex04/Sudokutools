from typing import List


# create and show
def init_empty_grid() -> List[List[int]]:
    pass


def init_candidates() -> List[List[str]]:
    pass


def print_grid(grid: List[List[int]]):

    pass


def input_sudoku(grid: List[List[int]]):

    pass


def set_default_sudoku_grid(grid: List[List[int]]):
    pass


# Check
def is_present_in_row(grid: List[List[int]], row_index: int, digit: int) -> bool:
    """
    Checks if the digit is present in other cells in this row. Returns True if this the case.
    Author: Fabian
    :param grid: Sudoku grid
    :param row_index: row index of the cell
    :param digit: column of the cell
    :return: True, if the digit is present i the row, otherwise False
    """
    return True


def is_present_in_column(grid: List[List[int]], column_index: int, digit: int) -> bool:
    pass


def is_present_in_block(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    pass


def is_possible_in_cell(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    pass


# Solve
def remove_impossible_candidates(grid: List[List[int]], candidates: List[List[str]]):
    pass


def set_value_in_cell_by_last_candidate(grid: List[List[int]], candidates: List[List[str]]) -> bool:
    pass


def find_lonely_candidate_in_row(candidates: List[List[str]], row_index: int, column_index: int):
    pass


def find_lonely_candidate_in_column(candidates: List[List[str]], row_index: int, column_index: int):
    pass


def find_lonely_candidate_in_block(candidates: List[List[str]], row_index: int, column_index: int):
    pass


def find_lonely_candidates(candidates: List[List[str]]):
    pass


def main():
    pass


if __name__ == "__main__":
    main()
