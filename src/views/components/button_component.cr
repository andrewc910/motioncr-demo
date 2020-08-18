class ButtonComponent < Motion::Base
  props text_content : String
  props count : Int32 = 0
  props map_motion : Bool = true

  @[Motion::MapMethod]
  def add(event : Motion::Event)
    @count += 1
  end

  def render
    div do
      span @count.to_s
      button class: "btn btn-primary", data_motion: "add" do
        text self.text_content
      end
    end
    view.to_s
  end
end