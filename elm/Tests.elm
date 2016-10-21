module Tests exposing (..)

import Test exposing (Test, describe, test)
import Expect
import Test.Runner.Html as Runner


testSuite : Test
testSuite =
    describe "sample test suite"
        [ test "sample test"
            <| \() ->
                True
                    |> Expect.equal False
        ]


main : Program Never
main =
    Runner.run testSuite
