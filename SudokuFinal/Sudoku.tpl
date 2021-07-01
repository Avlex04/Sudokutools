<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="stylesheet/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?=Shoolbell&v1" rel="stylesheet">
</head>
<body>
<div class="sudoku">
    <div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="8" disabled>
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04">
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="1" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="4" disabled>
    </div>
    <br>
     <div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="1" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" >
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="2" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04">
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="8" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="5" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08">
    </div>
    <br>
    <div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01">
    </div><div class="single_field third-column third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="4" disabled>
    </div><div class="single_field third-column third-row">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="8" disabled>
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="9" disabled>
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08">
    </div>
    <br>
    <div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01">
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="7" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="3" disabled>
    </div><div class="single_field third-column ">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="5" disabled>
    </div>
    <br>
    <div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="3" disabled>
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="9" disabled>
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="8" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08">
    </div>
    <br>
    <div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="9" disabled>
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01">
    </div><div class="single_field third-column third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="2" disabled>
    </div><div class="single_field third-column third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06" value="7" disabled>
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07">
    </div><div class="single_field third-row">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08">
    </div>
    <br>
    <div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="2" disabled>
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03" value="3" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04" value="7" disabled>
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08">
    </div>
    <br>
    <div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01" value="7" disabled>
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="5" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04">
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05" value="6" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08" value="9" disabled>
    </div>
    <br>
    <div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field00" value="3" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field01">
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field02" value="1" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field03">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field04">
    </div><div class="single_field third-column">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field05">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field06">
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field set-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field07" value="7" disabled>
    </div><div class="single_field">
        <input type="text" maxlength="1" class="entry-field variable-content" min="1" max="9" pattern="[1-9]" inputmode="numeric" name="field08">
    </div>
    <br>
</div>
</body>
</html>