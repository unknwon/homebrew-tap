class GmailBlade < Formula
  desc "Gmail sidecar for advanced filtering"
  homepage "https://github.com/unknwon/gmail-blade"
  url "file:///dev/null"
  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "go" => :build

  # Define the installation process.
  def install
    system "go", "install", "unknwon.dev/gmail-blade/cmd/gmail-blade@latest"
    gobin_path = `go env GOPATH`.strip + "/bin"
    installed_binary_path = "#{gobin_path}/gmail-blade"
    bin.install installed_binary_path
  end

  # Define the service properties.
  service do
    run [opt_bin/"gmail-blade", "server", "--config", etc/"gmail-blade.yml"]
    keep_alive true
    log_path var/"log/gmail-blade.log"
    error_log_path var/"log/gmail-blade.error.log"
  end

  # Add a test block to ensure the formula works.
  test do
    system "#{bin}/gmail-blade"
  end
end
