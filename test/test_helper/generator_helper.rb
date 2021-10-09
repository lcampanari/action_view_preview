ROOT_PATH = File.expand_path("../", __dir__)

module TestHelper
  module GeneratorHelper
    def app_path
      File.join(ROOT_PATH, "tmp")
    end

    def app_template_path
      File.join ROOT_PATH, "dummy/."
    end

    def build_app
      FileUtils.rm_rf(app_path)
      FileUtils.cp_r(app_template_path, app_path)
    end
  end
end