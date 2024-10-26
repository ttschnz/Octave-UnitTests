classdef TestCase < handle
    properties
        TestName
    end

    methods
        function obj = TestCase(testName)
            if nargin > 0
                obj.TestName = testName;
            end
        end

        function setUp(obj)
            % This method can be overridden in subclasses to set up test fixtures
        end

        function tearDown(obj)
            % This method can be overridden in subclasses to clean up after tests
        end

        function state = run(obj)
            state = 0;
            try
                obj.setUp();
                obj.(obj.TestName)();
                disp(['PASSED: ' obj.TestName]);
            catch err
                state = 1;
                disp(['FAILED: ' obj.TestName]);
                disp(['Error: ' err.message]);
            end
            obj.tearDown();
        end

        % Add assertion methods
        function verifyEqual(obj, actual, expected, varargin)
            if ~isequal(actual, expected)
              if nargin == 4
                 error('Assertion failed: values are not equal %s', varargin{1});
              else
                 error('Assertion failed: values are not equal');
              end
            end
        end

        function verifyNotEqual(obj, actual, expected)
            if isequal(actual, expected)
                error('Assertion failed: values are equal');
            end
        end

        function verifyTrue(obj, condition)
            if ~condition
                error('Assertion failed: condition is not true');
            end
        end

        function verifyFalse(obj, condition)
            if condition
                error('Assertion failed: condition is not false');
            end
        end
    end
end
