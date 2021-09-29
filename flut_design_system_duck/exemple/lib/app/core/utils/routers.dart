import 'package:flutter_modular/flutter_modular.dart';

class Routers {
  //Components
  static goToProgress() {
    return Modular.to.pushNamed('/components/progress');
  }

  static goToNetworkImage() {
    return Modular.to.pushNamed('/components/network-image');
  }

  static goToAvatar() {
    return Modular.to.pushNamed('/components/avatar');
  }

  static goToTextField() {
    return Modular.to.pushNamed('/components/text-field');
  }

  static goToPinCodeTextField() {
    return Modular.to.pushNamed('/components/pin-code-text-field');
  }

  static goToSnackbar() {
    return Modular.to.pushNamed('/components/snackbar');
  }

  static goToListComponents() {
    return Modular.to.pushNamed('/components/list/components');
  }

  static goToButton() {
    return Modular.to.pushNamed('/components/button');
  }

  //Home
	static goToDashboard() {
		return Modular.to.pushNamed('/home/dashboard');
	}
  static goToIconography() {
    return Modular.to.pushNamed('/home/iconography');
  }

  static goToTypography() {
    return Modular.to.pushNamed('/home/typography');
  }

  static goToHome() {
    return Modular.to.pushNamed('/home/home');
  }

  static goToMenuDashboard() {
    return Modular.to.navigate('/home/menu/dashboard');
  }

  static goToMenuIconography() {
    Modular.to.navigate('/home/menu/iconography');
  }

  static goToMenuTypography() {
    Modular.to.navigate('/home/menu/typography');
  }

  static goToMenuListComponent() {
    Modular.to.navigate('/home/menu/list/component');
  }
}
