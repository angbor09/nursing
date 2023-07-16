library(openalexR)

# Search scholarly nursing journals
journals_nursing <- oa_fetch(
  entity = "venues",
  x_concepts.id = "C159110408",
  verbose = TRUE)


# Search additional scholarly nursing journals
# from Scopus and Web of Science
# Replace ISSNs conveniently
add_journals <- openalexR::oa_query(entity = "venues",
                                    issn = c('2093-0828',
                                             '2383-4897',
                                             '1738-1320'))


add_journals <- openalexR::oa_request(query_url = add_journals,
                                      count_only = FALSE,
                                      verbose = FALSE)


# Search scholarly nursing articles
# published between 2000 and 2022
# with at least one citation
articles_nursing <- openalexR::oa_fetch(
  entity = "works",
  title.search = c("nursing"),
  type = "journal-article",
  cited_by_count = ">0",
  from_publication_date = "2000-01-01",
  to_publication_date = "2022-12-31",
  verbose = TRUE)
