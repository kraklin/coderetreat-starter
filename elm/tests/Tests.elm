module Tests exposing (..)

import Test exposing (..)
import Expect
import Fuzz exposing (list, int, string)


suite : Test
suite =
    describe "Module"
        [ test "Test pass" <|
            \() ->
                Expect.pass
        , test "Test fail" <|
            \() ->
                Expect.fail "FAIL"
        ]
