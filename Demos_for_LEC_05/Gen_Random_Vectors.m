function Gen_Random_Vectors()

    figure( 'Position', [40, 40, 1200, 800 ])
    axis( [0 10 0 10] );
    for idx = 1:20
        x1 = rand(1,1) * 10;	
        x2 = rand(1,1) * 10;
	    y1 = rand(1,1) * 10;
	    y2 = rand(1,1) * 10;   
        plot(   [x1, x2 ], ...
                [y1, y2 ], 'k-', 'LineWidth', 7 );
        hold on;        % You should know why.
    end

    drawnow;

%     disp('paused, hit return to continue')
%     pause();
    % Now make the axis fill the figure:
    set( gca(), 'Position', [0 0 1 1]);


    disp('paused, hit return to continue')
    pause();
    % Now turn off the axis tick marks:
    axis off;

    disp('paused, hit return to continue')
    pause();
    % Now make the background color white:
    set( gcf(), 'Color', 'w');
end

