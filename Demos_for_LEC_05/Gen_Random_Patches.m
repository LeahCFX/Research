function Gen_Random_Patches()

    figure( 'Position', [2400, 300, 1200, 800 ])
    axis( [0 10 0 10] );
    color_set = 'rgbcmyk';
    for idx = 1:30
        width = rand(1,1) * 3;
        x1 = rand(1,1) * 10;        % Modifies the range
        x2 = x1+width;
	    y1 = rand(1,1) * 10;
	    y2 = rand(1,1) * 10;   
        color_id = round( rand(1,1) * 6 ) + 1;

        patch(  [x1, x1, x2, x2 ], ...
                [y1, y2, y2, y1 ], color_set(color_id) );
        hold on;        % You should know why.
    end

    drawnow;

%     disp('paused, hit return to continue')
%     pause();
    % Now make the axis fill the figure:
    set( gca(), 'Position', [0 0 1 1]);


%     disp('paused, hit return to continue')
%     pause();
    % Now turn off the axis tick marks:
    axis off;

%     disp('paused, hit return to continue')
%     pause();
    % Now make the background color white:
    set( gcf(), 'Color', 'w');
end
