# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Community.Repo.insert!(%Community.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Community.News.Link
alias Community.Repo

%Link{url: "http://graphql.org", description: "The best query language"} |> Repo.insert!()
%Link{url: "http://apolllodata.com", description: "Awesome graphql client"} |> Repo.insert!()
