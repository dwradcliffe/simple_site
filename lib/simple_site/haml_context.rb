class SimpleSite
  class HamlContext

    def render_file filename
      contents = File.read(filename)
      Haml::Engine.new(contents).render
    end

    def partial partial_name
      render_file "_src/_#{partial_name}.haml"
    end

  end
end