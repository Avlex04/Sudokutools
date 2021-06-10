from typing import List


def init_empty_grid() -> List[List[int]]:
    return [[0] * 9 for _ in range(9)]


def init_candidates() -> List[List[str]]:
    return [["123456789"] * 9 for _ in range(9)]


def print_grid(grid: List[List[int]]):
    for i in range(9):
        row = ("".join(str(d)+" " for d in grid[i])).replace("0", " ")
        print(row[0:6], row[6:12], row[12:17], sep="| ")
        if i in (2, 5):
            print("-"*21)


def input_sudoku(grid: List[List[int]]):
    print("Please enter the rows of the sudoku line by line (space separated, 0 = emtpy):")
    row_index = 0
    while row_index < 9:
        entered_row = input("Row " + str(row_index+1) + ": ").replace(' ', '')
        if entered_row.isdecimal() and len(entered_row) == 9:
            grid[row_index] = [int(x) for x in entered_row]
            row_index += 1
    print()


def set_default_sudoku_grid(grid: List[List[int]]):
    default_sudoku = ("001207000", "062000000", "000000940",
                      "000980003", "500000000", "700030021",
                      "000102000", "070800410", "304000080")
    for i in range(9):
        grid[i] = [int(_) for _ in default_sudoku[i]]


def is_present_in_row(grid: List[List[int]], row_index: int, digit: int) -> bool:
    return digit in grid[row_index]


def is_present_in_column(grid: List[List[int]], column_index: int, digit: int) -> bool:
    return digit in [grid[row_index][column_index] for row_index in range(9)]


def is_present_in_block(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    row_start = row_index // 3 * 3
    column_start = column_index // 3 * 3
    return digit in [grid[row_start + r][column_start + c] for r in range(3) for c in range(3)]


def is_possible_in_cell(grid: List[List[int]], row_index: int, column_index: int, digit: int) -> bool:
    if not is_present_in_row(grid, row_index, digit):
        if not is_present_in_column(grid, column_index, digit):
            if not is_present_in_block(grid, row_index, column_index, digit):
                return True
    return False


def remove_impossible_candidates(grid: List[List[int]], candidates: List[List[str]]):
    for r in range(9):
        for c in range(9):
            if grid[r][c] == 0:
                candidates[r][c] = "".join([v * is_possible_in_cell(grid, r, c, int(v)) for v in candidates[r][c]])
            else:
                candidates[r][c] = ""


def set_value_in_cell_by_last_candidate(grid: List[List[int]], candidates: List[List[str]]) -> bool:
    at_least_one_cell_changed = False
    for r in range(9):
        for c in range(9):
            if len(candidates[r][c]) == 1:
                grid[r][c] = int(candidates[r][c])
                at_least_one_cell_changed = True
    return at_least_one_cell_changed


def find_lonely_candidate_in_row(candidates: List[List[str]], row_index: int, column_index: int):
    for p in candidates[row_index][column_index]:
        for c1 in range(9):
            if p in candidates[row_index][c1] and column_index != c1:
                break
        else:
            candidates[row_index][column_index] = p
            break


def find_lonely_candidate_in_column(candidates: List[List[str]], row_index: int, column_index: int):
    for p in candidates[row_index][column_index]:
        for r1 in range(9):
            if p in candidates[r1][column_index] and row_index != r1:
                break
        else:
            candidates[row_index][column_index] = p
            break


def find_lonely_candidate_in_block(candidates: List[List[str]], row_index: int, column_index: int):
    row_start = (row_index // 3) * 3
    column_start = (column_index // 3) * 3
    for p in candidates[row_index][column_index]:
        lonely_one = True
        for r1 in range(row_start, row_start + 3):
            for c1 in range(column_start, column_start + 3):
                if row_index != r1 or column_index != c1:
                    if p in candidates[r1][c1]:
                        lonely_one = False
        if lonely_one:
            candidates[row_index][column_index] = p
            break


def find_lonely_candidates(candidates: List[List[str]]):
    for r in range(9):
        for c in range(9):
            find_lonely_candidate_in_row(candidates, r, c)
            find_lonely_candidate_in_column(candidates, r, c)
            find_lonely_candidate_in_block(candidates, r, c)


def main():
    my_grid = init_empty_grid()
    my_candidates = init_candidates()
    # input_sudoku(my_grid)
    set_default_sudoku_grid(my_grid)
    print_grid(my_grid)
    for loop_no in range(1, 100):
        remove_impossible_candidates(my_grid, my_candidates)
        find_lonely_candidates(my_candidates)
        if not set_value_in_cell_by_last_candidate(my_grid, my_candidates):
            break
        print("\nROUND", loop_no, "\n")
        print_grid(my_grid)


if __name__ == "__main__":
    main()
