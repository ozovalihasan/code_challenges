def read_test_files(challenge_name)
  [read_files(challenge_name, "examples"), read_files(challenge_name, "expected_results")]
end

def read_examples(challenge_name)
  read_files(challenge_name, "examples")
end

def read_expected_results(challenge_name)
  read_files(challenge_name, "expected_results")
end

def read_files(challenge_name, file_name)
  File.read("#{File.dirname(__FILE__)}/#{challenge_name}/#{file_name}.txt").split.map {|example| eval(example)}
end