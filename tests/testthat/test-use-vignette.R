context("use-vignette")

test_that("use_vignette() requires a package", {
  skip_if_not_installed("rmarkdown")

  create_local_project()
  expect_usethis_error(use_vignette(), "not an R package")
})

test_that("use_vignette() requires a `name`", {
  skip_if_not_installed("rmarkdown")

  create_local_package()
  expect_error(use_vignette(), "no default")
})

test_that("valid_vignette_name() works", {
  expect_true(valid_vignette_name("perfectly-valid-name"))
  expect_false(valid_vignette_name("01-test"))
  expect_false(valid_vignette_name("test.1"))
})

test_that("use_vignette() does the promised setup", {
  skip_if_not_installed("rmarkdown")

  create_local_package()
  use_vignette("name", "title")

  ignores <- read_utf8(proj_path(".gitignore"))
  expect_true("inst/doc" %in% ignores)

  deps <- desc::desc_get_deps(proj_get())
  expect_true(
    all(c("knitr", "rmarkdown") %in% deps$package[deps$type == "Suggests"])
  )

  expect_identical(
    desc::desc_get_or_fail("VignetteBuilder", proj_get()),
    c(VignetteBuilder = "knitr")
  )
})
