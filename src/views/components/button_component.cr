class ButtonComponent < Motion::Base
  include JSON::Serializable
  props text_content : String = "Add"
  props count : Int32 = 0
  props motion_component : Bool = true

  @[Motion::MapMethod]
  def add(event : Motion::Event)
    @count += 1
  end

  def render
    div do
      span @count.to_s
      button class: "btn btn-primary", data_motion: "click->add" do
        text self.text_content
      end
    end
  end
end
