require "ty_based_rack/version"

module TyBasedRack
  class Application
    def call(env)
      case path
      when "/"
        root
      when "/favicon.ico"
        favicon
      else
        dispatch
      end
    end

    def path
      @path ||= env["PATH_INFO"]
    end

    def dispatch(path)
      kontroller_name, action = path.split "/"
      kontroller              = Object.const_get "#{kontroller_name.capitalize}Controller"
      response                = kontroller.new.send action

      [200, {"Content-type" => "text/html" }, [response]]
    end

    def root
      [302, {"Location" => "/pages/about" }, []]
    end

    def favicon
      [500, {}, []]
    end
  end
end
