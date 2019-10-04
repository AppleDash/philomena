defmodule Philomena.Images.Subscription do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key false

  schema "image_subscriptions" do
    belongs_to :image, Philomena.Images.Image, primary_key: true
    belongs_to :user, Philomena.Users.User, primary_key: true
  end

  @doc false
  def changeset(subscription, attrs) do
    subscription
    |> cast(attrs, [])
    |> validate_required([])
  end
end