require "rails_helper"

  describe Course do
    #Validação do Nome	
    before do
      @course = Course.new(name: "Cadastro Exemplo",
        description: "Descrição do cadastro Exemplo")
    end

    describe "quando o nome não foi informado" do
      before { @course.name = ""}
      it { should_not be_valid }
    end

    describe "quando o nome é muito curto" do
      before { @course.name = "na"}
      it { should_not be_valid }
    end

    describe "quando o nome é muito longo" do
      before { @course.name = "n" * 45}
      it { should_not be_valid }
    end

    describe "quando o nome do curso já está sendo usado" do
      before do
        course_with_same_name = @course.dup
        course_with_same_name.name = @course.name
        course_with_same_name.save
      end

      it { should_not be_valid }
    end

    #Validação do Número do Registro	
    describe "quando a descrição não foi informada " do
      before { @course.description = "" }
      it { should_not be_valid }
    end

    describe "quando a descrição é muito curta" do
      before { @course.description = "d"}
      it { should_not be_valid }
    end

    describe "quando a decrição é muito longa" do
      before { @course.name = "d" * 45}
      it { should_not be_valid }
    end

    describe "quando a descrição já está sendo usada" do
      before do
        course_with_same_register_description = @course.dup
        course_with_same_register_description.description = @course.description
        course_with_same_register_description.save
      end

      it { should_not be_valid }
    end

  end




