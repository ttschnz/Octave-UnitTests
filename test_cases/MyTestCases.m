classdef MyTestCases < matlab.unittest.TestCase
    methods (Test)
        function summing(testCase)
            testCase.verifyEqual(1+1,2, "one plus one has to be two")
        end
        function summing_2(testCase)
            testCase.verifyEqual(0+1,1, "zero plus one has to be one")
        end
    end
end
