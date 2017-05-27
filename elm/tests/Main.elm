module Main exposing (..)

import Test exposing (..)
import Expect
import Html exposing (..)
import App


suite : Test
suite =
    describe
        "Module"
        [ test "Test pass" <|
            \() ->
                App.firstFunction
                    |> Expect.equal 0
        , test "Test fail" <|
            \() ->
                Expect.fail "FAIL"
        ]
