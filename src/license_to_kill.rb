
class LicenseToKill
  def kill_process(pid)
    smoke_screen(pid)
  end

  private

  def smoke_screen(pid)
  end
end


ltk = LicenseToKill.new
ltk.send(:smoke_screen,12)
