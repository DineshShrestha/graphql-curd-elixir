defmodule CommunityWeb.NewsResolver do
  alias Community.News

  def all_links(_root, _args, _info) do
    {:ok, News.list_links()}
  end
  def create_link(_root, args, _info) do
    case News.create_link(args) do
      {:ok, link} ->
        {:ok, link}
      _error ->
        {:error, "could not create link"}
    end
  end
  def get_link(_, %{id: id}, _) do
    case News.get_link!(id) do
      nil -> {:error, "Url not found"}
      link -> {:ok, link}
    end
  end

  def update_link(_,  %{id: id, url: url}, _) do
    case  News.get_link!(id) do
      nil -> {:error, "Url not found"}
      link -> News.update_link(link, %{url: url})
    end
  end

  def delete(%{id: id}, _info) do
    News.get_link!(id)
    |>News.delete_link
  end
end
