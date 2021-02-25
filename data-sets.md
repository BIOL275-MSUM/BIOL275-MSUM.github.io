# Data sets

## Your own dataset

If you are involved in an ongoing research project, for example with a faculty member at MSUM, you may be able to use the data collected as part of that project for your BIOL 275 lab project.

In order for you to choose your owsn dataset, it must be approved by the instructor first. In general, it needs to have enough data to be able to answer an interesting question.

## Species occurrence data

-   [**eBird data**](https://ebird.org/science) on bird observations. This is a huge dataset with many possible questions to explore. Challenge level: Difficult

-   The **Botanical Information and Ecology Network** brings together data on plant distribution, abundance, and traits, with the goal of predicting and mitigating the effects of climate change on plant species and communities. You can download geolocated observations and trait data, but you'd probably need to combine it with some other earth observation data like those found below. Challenge level: Moderate

    -   [BIEN package](https://cran.r-project.org/web/packages/BIEN/vignettes/BIEN_tutorial.html)

-   [iNaturalist](https://www.inaturalist.org/). Challenge level: Easy

    -   [iNaturalist](https://www.inaturalist.org/) website
    -   [rinat package](https://docs.ropensci.org/rinat/)

-   [GBIF](https://www.gbif.org/). Global Biodiversity Information Facility. Geolocated occurrence data for all species worldwide, aggregated from many other data sources. Challenge level: Moderate

## Environmental data

-   [NEON](https://www.neonscience.org/data). The National Science Foundation's National Ecological Observatory Network (NEON) is a continental-scale observation facility operated by Battelle and designed to collect long-term open access ecological data to better understand how U.S. ecosystems are changing. The comprehensive data, spatial extent and remote sensing technology provided by NEON will enable a large and diverse user community to tackle new questions at scales not accessible to previous generations of ecologists. Challenge level: Difficult

    -   Users can browse data products and associated documentation and then select time frames and field sites to download the data

    -   The neonUtilities R package allows you to access and download NEON data as well as to work with NEON data downloaded from the portal.

## Public health data sets

-   [National Center for Health Statistics](https://www.cdc.gov/nchs/data_access/ftp_data.htm). Data sets, documentation, and questionnaires from NCHS data collection systems.

-   [County Health Rankings & Roadmaps](http://www.countyhealthrankings.org/). A source of annual county-level public health data. You can download data by state and year (see [Minnesota](http://www.countyhealthrankings.org/app/minnesota/2017/downloads), for example).

-   [KIDS COUNT](http://datacenter.kidscount.org/). A source of data on children and families and a project of the Annie E. Casey Foundation. Data is available by year and county/state. You would need to choose and download the variables necessary to answer your question. Topics include:

-   Other sources of data sets:

    -   [Minnesota Health Data Sources](http://www.countyhealthrankings.org/using-the-rankings-data/finding-more-data/minnesota), a list compiled by County Health Rankings & Roadmaps.

## COVID-19 data

## Geospatial data

### Appears

[**The Application for Extracting and Exploring Analysis Ready Samples (AρρEEARS)**](https://lpdaacsvc.cr.usgs.gov/appeears/) offers a simple and efficient way to access and transform geospatial data from a variety of federal data archives.

AρρEEARS enables users to subset geospatial datasets using spatial, temporal, and band/layer parameters.

Two types of sample requests are available:

-   point samples for geographic coordinates and
-   area samples for spatial areas via vector polygons.

Sample requests submitted to AρρEEARS provide users not only with data values, but also associated quality data values. Interactive visualizations with summary statistics are provided for each sample within the application, which allow users to preview and interact with their samples before downloading their data. Visit the Help page to learn more.

There are [handy videos](https://www.youtube.com/watch?v=thRApFufBq8) on how to use the system to get data.

-   Some datasets include:

    -   Land Surface Temperature (min, max, mean)
    -   Sea Surface Temperature
    -   Precipitation
    -   Snow cover
    -   Land cover
    -   Soil moisture, soil temperature
    -   Vegetation indices (e.g. NDVI)
    -   Gridded population data

-   The temporal and spatial range and resolution of these data sets varies.

You could explore geospatial data by itself, or if you have GPS coordinate for other types of data (e.g. georeferenced specimen or observation data) then you could us AppEARS to extract environmental data associated with those points.

### Other geospatial data

-   [**National Land Cover Database**](https://www.mrlc.gov/finddata.php). Could possibly look at land cover change in a particular area.

## Cellular and molecular biology and biochemistry

-   [**The Actinobacteriophage Database at PhagesDB.org**](https://phagesdb.org/), a website that collects and shares data, pictures, protocols, and analysis tools associated with the discovery, sequencing, and characterization of [mycobacteriophages](https://phagesdb.org/glossary/#Mycobacteriophage)---viruses that infect the *Mycobacteria* and also other bacterial hosts in the phylum Actinobacteria. It was developed at---and is maintained from---the **Pittsburgh Bacteriophage Institute**, a joint venture of **Dr. Graham Hatfull** and **Dr. Roger Hendrix**, both of the Department of Biological Sciences at the University of Pittsburgh.

## General online data repositories

-   [**Dryad**](http://datadryad.org/). A curated, general purpose data repository. You can search through it to find an interesting dataset. Here are two examples (but you should find your own):

    -   [Mammal community data from Wen *et al.* (2018)](http://hdl.handle.net/10255/dryad.170813). A dataset of mammal species found at sites along an elevational gradient on three mountains in China.
    -   [Birth seasonality data from Martinez-Bakker *et al.* (2014)](http://hdl.handle.net/10255/dryad.170822). A dataset of the number of births per month over the past 100 years in the US and 60 years in the World. Could possible be combined with another dataset to ask an interesting question.

-   [Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets). A topic-centric list of high-quality open datasets in public domains. By everyone, for everyone!

## Datasets in R

Many R packages have datasets included.
