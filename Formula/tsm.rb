# Homebrew formula for tsm
# brew tap hnts03/tsm
# brew install tsm

class Tsm < Formula
  desc "Lightweight fzf-based tmux session manager"
  homepage "https://github.com/hnts03/tmux-session-manager"
  version "0.2.0"

  url "https://github.com/hnts03/tmux-session-manager/archive/refs/tags/v#{version}.tar.gz"
  sha256 "e2add3e6bc73ae0e78c1c19090f47ce7ae14a4dbc05543157920000df2d9f76c"

  license "MIT"

  depends_on "fzf"
  depends_on "tmux"
  depends_on "yq"

  def install
    bin.install "bin/tsm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tsm version")
  end
end
