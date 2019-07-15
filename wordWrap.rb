def wrap(string, max_len)
	return string if string.length <= max_len
	br = string[0...max_len].rindex(" ") || max_len
	string[0...br].strip + "\n" + wrap(string[br..-1].strip, max_len)
end