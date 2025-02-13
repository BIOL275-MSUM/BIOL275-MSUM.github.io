# Organizing Data

## Moving Data Files to Your Project Folder

When working on your biostatistics project, it is essential to keep all relevant files organized within your project folder. **Do not leave your data files in the Downloads folder or other scattered locations on your computer.** Keeping them in one place ensures reproducibility, ease of access, and avoids lost files.

For instructions on how to download files and move them to your project folder, refer to [Downloading Files].

### Why Keep Files in the Project Folder?
- Ensures that file paths remain consistent across different computers.
- Prevents accidental deletion or misplacement.
- Allows for easy collaboration when sharing your project folder.
- Helps maintain reproducibility in your analyses.

## Organizing Data Files

To maintain an orderly project structure, **store all your data files in a dedicated folder within your project**. The recommended approach is:

1. **Create a `data/` folder** in your project directory.
2. Move all downloaded datasets, CSV files, and raw data into this folder.
4. Always reference data files using relative paths in R:
   

``` r
library(readr)
read_csv("data/my_dataset.csv")
```


## Managing the Data Folder in Git Repositories

If your project is tracked using **Git** and stored on GitHub, you should **not** include raw data files in the repository. Instead, you should:

1. **Instruct Git to ignore the `data/` folder** by adding it to your `.gitignore` file. Open your `.gitignore` file and add:
   
   ```
   data/
   ```
   
2. **Store data source information in a repository `README` file**. This file should include:
   - Where to obtain the data.
   - Any preprocessing steps needed before analysis.
   - A description of file formats and column meanings.
   
3. **Why exclude data files from Git?**
   - **Privacy:** Some datasets may contain sensitive or proprietary information.
   - **File Size:** Large files can slow down the repository and cause sync issues.
   - **Canonical Source:** Storing only links to data sources ensures all collaborators use the same original dataset without unintentional modifications.

## Summary
- **Always move your data files into your project folder** to maintain organization and reproducibility.
- **Use a `data/` folder** to keep datasets structured and manageable.
- **Exclude raw data from GitHub** using `.gitignore` and document data sources in a `README` file.

Following these best practices will help you work more efficiently and keep your analyses well-organized.
