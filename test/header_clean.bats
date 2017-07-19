@test "Handle file renames" {
	output=$( load_fixture "file-rename" | $diff_so_fancy )
	run printf "%s" "$output"
	assert_line --index 1 --partial "renamed:"
	assert_line --index 1 --partial "Changes.new"
	assert_line --index 1 --partial "bin/"
}

	assert_output --partial '@ package.json:1 @'
	assert_output --partial '@ diff-so-fancy:1 @'
@test "Hunk formatting: @@ -1 0,0 @@" {
	# stderr forced into output
	output=$( load_fixture "single-line-remove" | $diff_so_fancy )
	run printf "%s" "$output"
	assert_line --index 4 'var delayedMessage = "It worked";'
}
