from typing import List


# create and show
def init_empty_grid() -> List[List[int]]:
    """Initialize the sudoku grid as two dimensional list of integers with value 0"""
    grid = [[0 for _ in range(0, 9)] for _ in range(0, 9)]
    return grid


def init_candidates() -> List[List[str]]:
    """Initialize the candidate grid as two dimensional list of strings with value "123456789" """
    numbers = "123456789"
    candidates = [[numbers for _ in range(0, 9)] for _ in range(0, 9)]
    return candidates


def print_grid(grid: List[List[int]]):
    """Print the sudoku grid with pipes and lines separating each block (3x3) """
    for i in range(9):
        for j in range(9):
            print(grid[i][j] if grid[i][j] > 0 else " ", end=" ")
            if j in (2, 5):
                print(end="| ")
        print()
        if i in (2, 5):
            print("_"*21)
    print()


def input_sudoku(grid: List[List[int]]):
    """Read values for each line. Values are separated by one blank line"""
    print("Please enter the rows of the sudoku line by line (space separated, 0 = emtpy):")
    # read the sudoku from the command line
    for row_index in range(1, 10):
        entered_row = [int(x) for x in input("Row " + str(row_index) + ": ").split()]
        while len(entered_row) != 9:
            entered_row = [int(x) for x in input("Row " + str(row_index) + ": ").split()]
        grid[row_index - 1] = entered_row


def set_default_sudoku_grid(grid: List[List[int]]):
    default_sudoku = ("001207000", "062000000", "000000940",
                      "000980003", "500000000", "700030021",
                      "000102000", "070800410", "304000080")
    for i in range(9):
        grid[i] = [int(_) for _ in default_sudoku[i]]


# Check
def is_present_in_row(grid: List[List[int]], row_index: int, digit: int) -> bool:
    for c in grid[row_index]:
        if c == digit:
            return True
    return False


def is_present_in_column(grid: List[List[int]], column_index: int, digit: int) -> bool:
    for i in range(9):
        value = grid[i][column_index]
        if value == digit:
            return True
    return False


def is_present_in_block(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    row_start = row_index // 3 * 3
    column_start = column_index // 3 * 3
    for r in range(row_start, row_start+3):
        for c in range(column_start, column_start+3):
            value = grid[r][c]
            if value == digit:
                return True
    return False


def is_possible_in_cell(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    in_row = is_present_in_row(grid, row_index, digit)
    in_column = is_present_in_column(grid, column_index, digit)
    in_block = is_present_in_block(grid, row_index, column_index, digit)
    if in_row or in_column or in_block:
        return False
    else:
        return True


# Solve
def remove_impossible_candidates(grid: List[List[int]], candidates: List[List[str]]):
    for r in range(9):
        for c in range(9):
            if grid[r][c] != 0:
                candidates[r][c] = ""
            else:
                for v in candidates[r][c]:
                    if not is_possible_in_cell(grid, r, c, int(v)):
                        candidates[r][c] = (candidates[r][c]).replace(v, '')


def set_value_in_cell_by_last_candidate(grid: List[List[int]], candidates: List[List[str]]) -> bool:
    change = False
    for r in range(9):
        for c in range(9):
            if len(candidates[r][c]) == 1:
                grid[r][c] = int(candidates[r][c])
                change = True
    return change


def find_lonely_candidate_in_row(candidates: List[List[str]], row_index: int, column_index: int):
    for p in candidates[row_index][column_index]:
        lonely_one = True
        for c1 in range(9):
            if column_index != c1:
                if p in candidates[row_index][c1]:
                    lonely_one = False
        if lonely_one:
            candidates[row_index][column_index] = p
            break


def find_lonely_candidate_in_column(candidates: List[List[str]], row_index: int, column_index: int):
    for p in candidates[row_index][column_index]:
        lonely_one = True
        for r1 in range(9):
            if row_index != r1:
                if p in candidates[r1][column_index]:
                    lonely_one = False
        if lonely_one:
            candidates[row_index][column_index] = p
            break


def find_lonely_candidate_in_block(candidates: List[List[str]], row_index: int, column_index: int):
    row_start = (row_index // 3) * 3
    column_start = (column_index // 3) * 3
    for p in candidates[row_index][column_index]:
        lonely_one = True
        for r1 in range(row_start, row_start+3):
            for c1 in range(column_start, column_start+3):
                if row_index != r1 or column_index != c1:
                    if p in candidates[r1][c1]:
                        lonely_one = False
        if lonely_one:
            candidates[row_index][column_index] = p
            break


def find_lonely_candidates(candidates: List[List[str]]):
    for r in range(9):
        for c in range(9):
            pass
            find_lonely_candidate_in_row(candidates, r, c)
            find_lonely_candidate_in_column(candidates, r, c)
            find_lonely_candidate_in_block(candidates, r, c)


def main():
    my_grid = init_empty_grid()
    my_candidates = init_candidates()

    # input_sudoku(my_grid)
    set_default_sudoku_grid(my_grid)
    print()
    print_grid(my_grid)

    loop_no = 1
    while True:
        remove_impossible_candidates(my_grid, my_candidates)
        find_lonely_candidates(my_candidates)

        if not set_value_in_cell_by_last_candidate(my_grid, my_candidates):
            break

        print("ROUND", loop_no, "\n")
        loop_no += 1
        print_grid(my_grid)


if __name__ == "__main__":
    main()
