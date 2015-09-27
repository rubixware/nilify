module Nilify


  def nilify(methods)
    nilify_methods(methods)
  end

  def nilify_from(class_param)
    nilify_methods(class_param.instance_methods(false))
  end

  def nilify_methods(methods)
    methods.each do |method|
      define_method(method) do
        "#{method} is a mock method"
      end
    end
  end


end
