class FlowPHP < Formula
  desc "Flow is a first and the most advanced PHP ETL framework"
  homepage "https://github.com/flow-php/flow"
  url "https://github.com/flow-php/flow/releases/download/0.5.0/flow.phar"
  sha256 "72039c14e7ecb8184f6fbb89afab529adc0b4107a0dee958c4996b356d0a3fe8"

  depends_on "php" if MacOS.version <= :el_capitan

  def install
    bin.install "flow.phar" => "flow"
  end

  test do
    shell_output("#{bin}/flow --version").include?(version)
  end
end
