class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  has_many :activities, if: :condition

  def condition
    @instance_options[:flag] == "show"
  end
end
