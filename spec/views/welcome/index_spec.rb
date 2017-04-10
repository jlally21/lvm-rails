require 'rails_helper'

RSpec.describe 'welcome/index.html.erb', type: :view do
  describe 'links' do
    before do
      assign(:see_tutoring_sessions, true)
      assign(:see_affiliates, true)
      assign(:see_coordinators, true)
      assign(:see_matches, true)
      assign(:see_students, true)
      assign(:see_tutors, true)
      assign(:tutor_id, 1)
      render
    end

    describe 'tutoring sessions views' do
      it 'provides a link to the index page' do
        assert_select 'a[href=?]', tutoring_sessions_path(
          params: { tutor_id: 1 }
        )
      end
    end

    describe 'student views' do
      it 'provides a link to the index page' do
        assert_select 'a[href=?]', students_path
      end
    end

    describe 'tutor views' do
      it 'provides a link to the index page' do
        assert_select 'a[href=?]', tutors_path
      end
    end

    describe 'coordinator views' do
      it 'provides a link to the index page' do
        assert_select 'a[href=?]', coordinators_path
      end
    end

    describe 'affiliate views' do
      it 'provides a link to the index page' do
        assert_select 'a[href=?]', affiliates_path
      end
    end

    describe 'matches views' do
      it 'provides a link to the index page' do
        assert_select 'a[href=?]', matches_path
      end
    end
  end
end
