
function state = run_tests(test_case_name)
  state = 0;
  tests = eval(test_case_name);
  test_cases = setdiff(methods(tests), methods(matlab.unittest.TestCase), "stable");
  for idx = 1:size(test_cases,1)
    test = tests.TestCase(cell2mat(test_cases(idx)));
    state += test.run();
  end
end;
