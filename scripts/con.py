def add_custom(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            modified_line = f".config/{line}"
            outfile.write(modified_line)

add_custom("config.txt","mod.txt")

