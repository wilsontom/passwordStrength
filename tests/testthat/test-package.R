context('package')

test_that('package-works', {
    expect_true(is.numeric(charset_size('password')))
    expect_true(is.list(password_strength('password')))
    expect_true(length(password_strength('password')) == 2)
})
