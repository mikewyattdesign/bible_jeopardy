module ApplicationHelper
    def parent_layout(layout)
        @view_flow.set(:layout, output_buffer)
        self.output_buffer = render(:file => "layouts/#{layout}")
    end
    def nav_link(link_text, link_path, force_active = false)
        class_name = (force_active || current_page?(link_path)) ? 'active' : ''
        link_path << "?access_token=#{@access_token}" if @access_token
        content_tag(:li, class: class_name) do
            link_to link_text, link_path
        end
    end
end
