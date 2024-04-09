Rem THIS PROGRAM IS IN T3H PUBLIC DOMAIN
' Screen Saver Scatola-Box
' ScreenSaver_scatola.bas
' 8-4-2024
' Linux Mint 20.3 64bit - QB64

Screen 12
_FullScreen
If _FullScreen = 0 Then _FullScreen _Off 'check that a full screen mode initialized
Randomize Timer

Line (0, 0)-(640, 480), 15, BF
Dim W, H, A, B, C, D, E, F, G
X = Int(Rnd(1) * 640)
Y = Int(Rnd(1) * 480)
Dim L


Do
    Cls

    X = Int(Rnd(1) * 640)
    Y = Int(Rnd(1) * 480)
    COLOUR = Int(Rnd(1) * 14) + 1
    'Lato
    L = Int(Rnd(1) * 80) + 50

    A = X + L
    B = Y + L
    C = X + (L / 2)
    D = Y - (L / 2) - 10
    E = X + (L + (L / 2))
    F = Y + (L - 10)

    Color COLOUR
    'Faccia
    Line (X, Y)-(A, Y), COLOUR
    Line (X, Y)-(X, B), COLOUR
    Line (A, Y)-(A, B), COLOUR
    Line (X, B)-(A, B), COLOUR
    Paint (X + 1, Y + 1), COLOUR
    'Z
    Line (X, Y)-(C, D), COLOUR
    Line (A, Y)-(A + (L / 2), D), COLOUR
    Line (X, B)-(C, B - (L / 2) - 10), COLOUR
    Line (A, B)-(A + (L / 2), B - (L / 2) - 10), COLOUR

    '2
    Line (C, D)-(A + (L / 2), D), COLOUR
    Line (C, D)-(C, B - (L / 2) - 10), COLOUR
    Line (C, B - (L / 2) - 10)-(A + (L / 2), B - (L / 2) - 10), COLOUR
    Line (A + (L / 2), B - (L / 2) - 10)-(A + (L / 2), D), COLOUR
    'Scatola Sin
    Line (X, Y)-(X - (L / 2), Y + (L / 4)), COLOUR
    Line (C, D)-(C - (L / 2), D + (L / 4)), COLOUR
    Line (X - (L / 2), Y + (L / 4))-(C - (L / 2), D + (L / 4)), COLOUR
    'Scatola Des
    Line (A + (L / 2), D)-(A + (L / 2) + (L / 2), D + (L / 4)), COLOUR
    Line (A, Y)-(A + (L / 2), Y + (L / 4)), COLOUR
    Line (A + (L / 2), Y + (L / 4))-(A + (L / 2) + (L / 2), D + (L / 4)), COLOUR
    'Paint Sinistro
    Paint (X - 5, Y - 5), COLOUR
    'Paint Destro
    Paint (A + 5, Y), COLOUR
    Paint (A + 5 + (L / 2), Y), COLOUR
    Paint (A + 5, Y + 5), COLOUR
    Paint (A + 5, Y + (L / 2)), COLOUR
    'Linea nera
    Line (A, Y)-(A + (L / 2), Y + (L / 4)), 0
    If InKey$ = Chr$(27) Then Exit Do

    _Delay 1
Loop
