<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="stylesheet/style.css" >
    <link href="https://fonts.googleapis.com/css?=Shoolbell&v1" rel="stylesheet">
</head>
<body>
    <div class="sudoku">
        <form id="tictactoe" name="tictactoe" class="board" action="check" method="post">
            <div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00"  value="{{grid[0][0]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="8" disabled>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="{{grid[0][2]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="{{grid[0][3]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="{{grid[0][4]}}"/>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[0][5]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="1" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="{{grid[0][7]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="4" disabled>
            </div>
            <br>
             <div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="1" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="{{grid[1][1]}}"/>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="{{grid[1][2]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="2" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="{{grid[1][4]}}"/>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[1][5]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="8" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="5" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="{{grid[1][8]}}"/>
            </div>
            <br>
            <div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="{{grid[2][0]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="{{grid[2][1]}}"/>
            </div><div class="single_field third-column third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="{{grid[2][2]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="{{grid[2][3]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="4" disabled>
            </div><div class="single_field third-column third-row">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="8" disabled>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="{{grid[2][6]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="9" disabled>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="{{grid[2][8]}}"/>
            </div>
            <br>
            <div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="{{grid[3][0]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="{{grid[3][1]}}"/>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="7" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="{{grid[3][3]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="3" disabled>
            </div><div class="single_field third-column ">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[3][5]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="{{grid[3][6]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="{{grid[3][7]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="5" disabled>
            </div>
            <br>
            <div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="{{grid[4][0]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="3" disabled>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="{{grid[4][2]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="{{grid[4][3]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="9" disabled>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[4][5]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="{{grid[4][6]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="8" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="{{grid[4][8]}}"/>
            </div>
            <br>
            <div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="9" disabled>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="{{grid[5][1]}}"/>
            </div><div class="single_field third-column third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="{{grid[5][2]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="{{grid[5][3]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="2" disabled>
            </div><div class="single_field third-column third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[5][5]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="7" disabled>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="{{grid[5][7]}}"/>
            </div><div class="single_field third-row">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="{{grid[5][8]}}"/>
            </div>
            <br>
            <div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="{{grid[6][0]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="2" disabled>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="{{grid[6][2]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="3" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="7" disabled>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[6][5]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="{{grid[6][6]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="{{grid[6][7]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="{{grid[6][8]}}"/>
            </div>
            <br>
            <div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="{{grid[7][0]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="7" disabled>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="5" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="{{grid[7][3]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="{{grid[7][4]}}"/>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="6" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="{{grid[7][6]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="{{grid[7][7]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="9" disabled>
            </div>
            <br>
            <div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="3" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="{{grid[8][1]}}"/>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="1" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="{{grid[8][3]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="{{grid[8][4]}}"/>
            </div><div class="single_field third-column">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="{{grid[8][5]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="{{grid[8][6]}}"/>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="7" disabled>
            </div><div class="single_field">
                <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="{{grid[8][8]}}"/>
            </div>
            <br>
            <div class="buttons">
            <a href="/"><button name="reset_button" type="button">Reset</button></a>
            <a href="/solution"><button name="solution_button" type="button">Solution</button></a>
            <button name="check_button" type="submit">Check(Fehler)</button>
            </div>
        </form>
    </div>

</body>
</html>