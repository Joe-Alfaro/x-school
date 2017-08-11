class RulesController < ApplicationController
  def index
    @rules = Rule.all
  end
  def new
    @rules = Rule.all
    @rule = Rule.new
  end
  def create
    @rule = Rule.new(rule_params)
    if @rule.save
      redirect_to new_rule_path
    else
      redirect_to new_rule_path
    end
  end

private
  def rule_params
    params.require(:rule).permit(:rule_string, :teacher_id)
  end
end
