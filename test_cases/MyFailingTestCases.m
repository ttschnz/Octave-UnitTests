classdef MyFailingTestCases < matlab.unittest.TestCase
    methods (Test)
        function summing(testCase)
            testCase.verifyEqual(1+2,2, "one plus two has to be two? (not sure)")
        end
    end
end
