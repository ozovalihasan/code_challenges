require_relative '../read_test_files'


def is_bad_version(version)
  folder_name = File.dirname(caller_locations(1, 1).first.path)
  examples = read_examples(folder_name)
  version >= examples[@index * 2 + 1]
end