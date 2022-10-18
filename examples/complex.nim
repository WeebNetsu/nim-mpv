import std/[os]
import mpv
# ncurses >= 1.0.2
import pkg/ncurses

proc keypress(): int =
    var pwin = initscr()
    raw()
    keypad(pwin, true)
    noecho()

    # printw("Type any character to see it in bold\n")

    # while true:
    let ch: cint = getch()

    # case ch
    # of KEY_F(2):
    #     printw("F2 Key pressed\n")
    # of ord(' '):
    #     printw("PAUSE\n")
    # of ord('r'):
    #     printw("RESTART\n")
    # of ord('q'):
    #     printw("QUIT\n")
    # else:
    #     # echo (ch)
    #     printw("The pressed key is %c\n", ch)
        # attron(A_BOLD)
        # printw("%c", ch)
        # attroff(A_BOLD)
    # refresh()

    endwin()
    return int(ch)

proc checkMpvError(errno: cint) =
    if errno < 0:
        echo("Happy Error")

proc main() =
    if paramCount() != 1:
        echo "pass a single media file as argument"
        return

    let ctx = mpv.create()
    if ctx.isNil:
        echo "failed creating mpv context"
        return

    # Enable default key bindings, so the user can actually interact with
    # the player (and e.g. close the window).
    ctx.set_option("terminal", "yes")
    ctx.set_option("input-default-bindings", "yes")
    ctx.set_option("input-vo-keyboard", "yes")
    ctx.set_option("osc", true)
    # ctx.set_option("loop-playlist", "yes")
    ctx.set_option("vid", "no")

    # Done setting up options.
    check_error ctx.initialize()

    # Play this file.
    ctx.command("loadfile", paramStr(1))

    while true:
        let
            kp = keypress()
            event = ctx.wait_event(10000)

        case kp
        of ord(' '):
            # printw("SPACES\n")
            # ctx.command("pause", "yes")
            checkMpvError(ctx.set_option_string("pause", "yes"))
        of ord('q'):
            break
        else:
            continue
            # printw("Not allowed\n")
        if event.event_id == mpv.EVENT_SHUTDOWN:
            break

    mpv.terminate_destroy(ctx)

main()
