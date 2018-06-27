import RootVue from './views';
import initialState from './state/initialState';
import mutations from './state/mutations';
import KolibriApp from 'kolibri_app';

class OnboardingApp extends KolibriApp {
  get RootVue() {
    return RootVue;
  }
  get pluginModule() {
    return {
      state: initialState,
      mutations,
    };
  }
}

export default new OnboardingApp();
