require "rails_helper"

  describe Student do
    #Validação do Nome	
    before do
      @student = Student.new(name: "Cadastro Exemplo",
        register_number: "Número do registro do cadastro Exemplo")
    end

    describe "quando o nome não foi informado" do
      before { @student.name = ""}
      it { should_not be_valid }
    end

    describe "quando o nome é muito curto" do
      before { @student.name = "na"}
      it { should_not be_valid }
    end

    describe "quando o nome é muito longo" do
      before { @student.name = "n" * 45}
      it { should_not be_valid }
    end

    describe "quando o nome de estudante já está sendo usado" do
      before do
        student_with_same_name = @student.dup
        student_with_same_name.name = @student.name
        student_with_same_name.save
      end

      it { should_not be_valid }
    end

    #Validação do Número do Registro	
    describe "quando o número de registro não foi informado " do
      before { @student.register_number = "" }
      it { should_not be_valid }
    end

    describe "quando o número do registro é muito curto" do
      before { @student.name = "1"}
      it { should_not be_valid }
    end

    describe "quando o número do registro é muito longo" do
      before { @student.name = "n" * 45}
      it { should_not be_valid }
    end

    describe "quando o número do registro já está sendo usado" do
      before do
        student_with_same_register_number = @student.dup
        student_with_same_register_number.register_number = @student.register_number
        student_with_same_register_number.save
      end

      it { should_not be_valid }
    end

  end




