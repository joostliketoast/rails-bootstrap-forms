require 'test_helper'

class BootstrapFieldsTest < ActionView::TestCase
  include BootstrapForm::Helper

  def setup
    setup_test_fixture
  end

  test "text fields have tooltip correctly" do
    expected = %{<div class="form-group"><label class="control-label required" for="user_email">Email</label><a class="rails-bootstrap-forms-tooltip-button" data-container="body" data-content="test content" data-placement="right" data-toggle="popover" data-trigger="click" role="button" title="test"><span class="glyphicon glyphicon-question-sign"></span></a><input class="form-control" id="user_email" name="user[email]" type="text" value="steve@example.com" /></div>}
    assert_equal expected, @builder.text_field(:email, wrapper: { help_tooltip: { icon: 'glyphicon glyphicon-question-sign', title: 'test', content: 'test content', placement: 'right', container: 'body' } })
  end
end
