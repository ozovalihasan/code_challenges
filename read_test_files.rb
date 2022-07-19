def read_test_files(folder_name = nil)
  folder_name = File.dirname(caller_locations(1, 1).first.path) if folder_name.nil?

  {
    examples: read_files(folder_name, 'examples'),
    results: read_files(folder_name, 'expected_results')
  }
end

def read_examples(folder_name)
  read_files(folder_name, 'examples')
end

def read_expected_results(folder_name)
  read_files(folder_name, 'expected_results')
end

def read_files(folder_name, file_name)
  lines = File.read("#{folder_name}/#{file_name}.txt").split("\n")
  lines.reject! { |line| line.delete(' ').empty? }
  lines.reject! { |line| line.start_with?(/\s*#/) }
  lines.each { |example| example.gsub!("null", "nil") }
  lines.map { |example| eval(example) }
end
