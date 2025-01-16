# Citing R

It is common practice when reporting the results of a statistical analysis to cite any software and packages used in the analysis.

The following sections explain:

1.  How to cite R
2.  How to cite RStudio
3.  How to cite R packages

## References

The first step to creating in-text citations is to create full references that can go in the Reference section of your report.

### R reference

You can get the references for R by running the `citation()` command:


``` r
citation()
```

```
#> To cite R in publications use:
#> 
#>   R Core Team (2024). _R: A Language and Environment for Statistical
#>   Computing_. R Foundation for Statistical Computing, Vienna, Austria.
#>   <https://www.R-project.org/>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {R: A Language and Environment for Statistical Computing},
#>     author = {{R Core Team}},
#>     organization = {R Foundation for Statistical Computing},
#>     address = {Vienna, Austria},
#>     year = {2024},
#>     url = {https://www.R-project.org/},
#>   }
#> 
#> We have invested a lot of time and effort in creating R, please cite it
#> when using it for data analysis. See also 'citation("pkgname")' for
#> citing R packages.
```

Then just copy the formatted reference and paste it into your References section:

-   R Core Team (2024). \_R: A Language and Environment for Statistical Computing\_. R Foundation for Statistical Computing, Vienna, Austria. <https://www.R-project.org/>.

### RStudio reference

To get the reference for RStudio:


``` r
RStudio.Version()
```

-   Posit team (2024). RStudio: Integrated Development Environment for R. Posit Software, PBC, Boston, MA. URL <http://www.posit.co/.>

### R package references

Which packages to cite depends on the publication outlet. In general, cite packages that you have to load in your scripts. This means do not cite base R packages or dependencies of packages you load in your scripts.

The exception to this might be packages in the tidyverse. For example, if you load the tidyverse package, still cite packages like dplyr and ggplot2 that you use in your code, even if you load them by loading tidyverse. Almost all analyses in this course will use dplyr and ggplot2. You may also be using other tidyverse packages including:

-   **readr**. for `read_csv()`

-   **tidyr**. especially `pivot_longer()` and `pivot_wider()`

-   **forcats**. functions that start with `fct_`

-   **stringr**. functions that start with `str_`

-   **readxl**. for `read_excel()`

-   **googlesheets4**. for `read_sheet()`

-   **rnaturalearth** and **sf**. for making maps.

To get the reference for a particular package.


``` r
citation("tidyverse")
```

```
#> To cite package 'tidyverse' in publications use:
#> 
#>   Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R,
#>   Grolemund G, Hayes A, Henry L, Hester J, Kuhn M, Pedersen TL, Miller
#>   E, Bache SM, Müller K, Ooms J, Robinson D, Seidel DP, Spinu V,
#>   Takahashi K, Vaughan D, Wilke C, Woo K, Yutani H (2019). "Welcome to
#>   the tidyverse." _Journal of Open Source Software_, *4*(43), 1686.
#>   doi:10.21105/joss.01686 <https://doi.org/10.21105/joss.01686>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Article{,
#>     title = {Welcome to the {tidyverse}},
#>     author = {Hadley Wickham and Mara Averick and Jennifer Bryan and Winston Chang and Lucy D'Agostino McGowan and Romain François and Garrett Grolemund and Alex Hayes and Lionel Henry and Jim Hester and Max Kuhn and Thomas Lin Pedersen and Evan Miller and Stephan Milton Bache and Kirill Müller and Jeroen Ooms and David Robinson and Dana Paige Seidel and Vitalie Spinu and Kohske Takahashi and Davis Vaughan and Claus Wilke and Kara Woo and Hiroaki Yutani},
#>     year = {2019},
#>     journal = {Journal of Open Source Software},
#>     volume = {4},
#>     number = {43},
#>     pages = {1686},
#>     doi = {10.21105/joss.01686},
#>   }
```

-   Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R, Grolemund G, Hayes A, Henry L, Hester J, Kuhn M, Pedersen TL, Miller E, Bache SM, Müller K, Ooms J, Robinson D, Seidel DP, Spinu V, Takahashi K, Vaughan D, Wilke C, Woo K, Yutani H (2019). “Welcome to the tidyverse.” \_Journal of Open Source Software\_, \*4\*(43), 1686. <doi:10.21105/joss.01686> <https://doi.org/10.21105/joss.01686>.

To see package version numbers:


``` r
packageVersion("tidyverse")
```

```
#> [1] '2.0.0'
```

## In-text citations

The methods section of your report will often include a paragraph like this:

> All analyses were performed using R Statistical Computing Software (v4.3.3; R Core Team 2024) in the RStudio IDE (Posit team 2024). We used the tidyverse R packages (Wickham et al. 2019) including readr, dplyr, ggplot2. Maps were created using the R packages rnaturalearth (v 1.0.1; Massicotte and South 2023) and sf (Pebesma and Bivand 2023, Pebesma 2018).

In addition, you would citation any sources for the data you use.
