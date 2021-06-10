import unittest
from LK3a.Tests.TestSuS import *


class TestLK3(unittest.TestCase):


    def init_empty_grid_P(self) -> List[List[int]]:
        return [[0] * 9 for _ in range(9)]

    def init_candidates_P(self) -> List[List[str]]:
        return [["123456789"] * 9 for _ in range(9)]


    def setUp(self) -> None:
        self.grid = init_empty_grid()
        self.candidates = init_candidates()

    def test_init_empty_grid(self):
        self.assertEqual(type(self.grid), type([]), "Grid muss eine Liste sein")
        self.assertEqual(len(self.grid), 9, "Grid muss 9 inneren Listen besitzen")
        for inner in self.grid:
            self.assertEqual(len(inner), 9, "Innere Listen von Grid müssen 9 Elemente besitzen")
            for value in inner:
                self.assertEqual(value, 0, "Falscher Wert in Grid. Der Wert muss 0 sein")

    def test_init_candidates(self):
        self.assertEqual(type(self.candidates), type([]), "Candidates muss eine Liste sein")
        self.assertEqual(len(self.candidates), 9, "Candidates muss 9 inneren Listen besitzen")
        for inner_c in self.candidates:
            self.assertEqual(len(inner_c), 9, "Innere Listen von Candidates müssen 9 Elemente besitzen")
            for value in inner_c:
                self.assertEqual(value, "123456789", "Falscher Wert in Candidates. Der Wert muss '123456789' sein")

    def test_set_default_sudoku_grid(self):
        set_default_sudoku_grid(self.grid)
        values = "001207000062000000000000940000980003500000000700030021000102000070800410304000080"
        for i in range(9):
            for j in range(9):
                self.assertEqual(self.grid[i][j], int(values[j+i*9]), "Falsche Zahl eingetragen")

    def test_is_present_in_row(self):
        self.grid[4][5] = 6
        self.assertTrue(is_present_in_row(self.grid, 4, 6), "Zahl 6 wird in der Reihe nicht erkannt")
        self.assertFalse(is_present_in_row(self.grid, 4, 5), "Zahl 5 wird falsch in der Reihe erkannt")
        self.assertFalse(is_present_in_row(self.grid, 5, 6), "Zahl 6 wird falsch in der Reihe erkannt")

    def test_is_present_in_column(self):
        self.grid[4][5] = 3
        self.assertTrue(is_present_in_column(self.grid, 5, 3), "Zahl 3 wird in der Spalte nicht erkannt")
        self.assertFalse(is_present_in_column(self.grid, 5, 5), "Zahl 5 wird falsch in der Spalte erkannt")
        self.assertFalse(is_present_in_column(self.grid, 4, 3), "Zahl 3 wird falsch in der Spalte erkannt")

    def test_is_present_in_block(self):
        self.grid[4][5] = 8
        self.assertTrue(is_present_in_block(self.grid, 3, 3, 8), "Zahl 8 wird im Block nicht erkannt")
        self.assertTrue(is_present_in_block(self.grid, 5, 3, 8), "Zahl 8 wird im Block nicht erkannt")
        self.assertTrue(is_present_in_block(self.grid, 3, 5, 8), "Zahl 8 wird im Block nicht erkannt")

        self.assertFalse(is_present_in_block(self.grid, 3, 3, 4), "Zahl 4 wird falsch im Block erkannt")
        self.assertFalse(is_present_in_block(self.grid, 4, 2, 8), "Zahl 8 wird falsch im Block erkannt")
        self.assertFalse(is_present_in_block(self.grid, 4, 6, 8), "Zahl 8 wird falsch im Block erkannt")
        self.assertFalse(is_present_in_block(self.grid, 1, 5, 8), "Zahl 8 wird falsch im Block erkannt")
        self.assertFalse(is_present_in_block(self.grid, 6, 5, 8), "Zahl 8 wird falsch im Block erkannt")

    def test_is_possible_in_cell(self):
        self.grid[4][5] = 6
        self.assertTrue(is_possible_in_cell(self.grid, 0, 0, 6), "Zahl 6 sollte in Zelle nicht möglich sein")
        self.assertTrue(is_possible_in_cell(self.grid, 6, 6, 6), "Zahl 6 sollte in Zelle nicht möglich sein")
        self.assertTrue(is_possible_in_cell(self.grid, 0, 6, 6), "Zahl 6 sollte in Zelle nicht möglich sein")
        self.assertTrue(is_possible_in_cell(self.grid, 2, 4, 6), "Zahl 6 sollte in Zelle nicht möglich sein")
        self.assertTrue(is_possible_in_cell(self.grid, 4, 5, 5), "Zahl 5 sollte in Zelle nicht möglich sein")

        self.assertFalse(is_possible_in_cell(self.grid, 4, 5, 6), "Zahl 6 sollte in Zelle möglich sein")
        self.assertFalse(is_possible_in_cell(self.grid, 1, 5, 6), "Zahl 6 sollte in Zelle möglich sein")
        self.assertFalse(is_possible_in_cell(self.grid, 4, 1, 6), "Zahl 6 sollte in Zelle möglich sein")
        self.assertFalse(is_possible_in_cell(self.grid, 3, 4, 6), "Zahl 6 sollte in Zelle möglich sein")

    def test_remove_impossible_candidates(self):
        self.grid[4][5] = 6
        remove_impossible_candidates(self.grid, self.candidates)
        self.assertEqual(self.candidates[4][5], "", "Candidates String wird nicht richtig auf "" gesetzt")
        self.assertEqual(self.candidates[4][0], "12345789", "Kandidat 6 wird nicht aus Candidates gelöscht, Reihe")
        self.assertEqual(self.candidates[7][5], "12345789", "Kandidat 6 wird nicht aus Candidates gelöscht, Spalte")
        self.assertEqual(self.candidates[3][4], "12345789", "Kandidat 6 wird nicht aus Candidates gelöscht, Block")
        self.assertEqual(self.candidates[1][4], "123456789", "Kandidat 6  fehlerhaft aus Candidates gelöscht, Block")

    def test_set_value_in_cell_by_last_candidate(self):
        self.grid[4][5] = 6
        grid_has_changed = set_value_in_cell_by_last_candidate(self.grid, self.candidates)
        self.assertFalse(grid_has_changed, "Fehlende Änderung nicht zurückgegeben")
        self.candidates[6][7] = "3"
        grid_has_changed = set_value_in_cell_by_last_candidate(self.grid, self.candidates)
        self.assertTrue(grid_has_changed, "Änderung in Grid nicht erkannt")
        self.assertEqual(self.grid[6][7], 3)

    def test_find_lonely_candidate_in_row(self):
        self.grid[4][5] = 6
        for i in range(9):
            self.candidates[4][i] = "23456789"
        self.candidates[4][0] = "123"
        find_lonely_candidate_in_row(self.candidates, 4, 0)
        self.assertEqual(self.candidates[4][0], "1", "Lonely Candidate in Reihe nicht gefunden")

    def test_find_lonely_candidate_in_column(self):
        self.grid[4][5] = 6
        for i in range(9):
            self.candidates[i][6] = "1234"
        self.candidates[0][6] = "12345"
        find_lonely_candidate_in_column(self.candidates, 0, 6)
        self.assertEqual(self.candidates[0][6], "5", "Lonely Candidate in Spalte nicht gefunden")

    def test_find_lonely_candidate_in_block(self):
        self.grid[4][5] = 6
        for i in range(3, 6):
            for j in range(3, 6):
                self.candidates[i][j] = "678"
        self.candidates[4][5] = "6789"
        find_lonely_candidate_in_block(self.candidates, 4, 5)
        self.assertEqual(self.candidates[4][5], "9", "Lonely Candidate in Block nicht gefunden")

    def tearDown(self) -> None:
        pass


if __name__ == "__main__":
    main()
