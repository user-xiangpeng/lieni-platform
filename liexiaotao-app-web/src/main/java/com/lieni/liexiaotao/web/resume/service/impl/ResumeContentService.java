package com.lieni.liexiaotao.web.resume.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lieni.liexiaotao.api.resume.bean.AppealResultEnum;
import com.lieni.liexiaotao.api.resume.remote.IResumeAppealRemoteService;
import com.lieni.liexiaotao.api.resume.remote.IResumeCollectRemoteService;
import com.lieni.liexiaotao.api.resume.remote.IResumePurchaseRemoteService;
import com.lieni.liexiaotao.resume.model.ResumePurchaseRecord;
import com.lieni.liexiaotao.web.resume.service.IResumeContentService;
import com.lieni.liexiaotao.web.resume.view.BackgroungSurveyView;
import com.lieni.liexiaotao.web.resume.view.EducationExperienceView;
import com.lieni.liexiaotao.web.resume.view.JobIntentionView;
import com.lieni.liexiaotao.web.resume.view.LanguageView;
import com.lieni.liexiaotao.web.resume.view.ProductView;
import com.lieni.liexiaotao.web.resume.view.ProjectExperienceView;
import com.lieni.liexiaotao.web.resume.view.ResumeEducationBackgroundView;
import com.lieni.liexiaotao.web.resume.view.ResumeInfoView;
import com.lieni.liexiaotao.web.resume.view.ResumeReportView;
import com.lieni.liexiaotao.web.resume.view.ResumeWorkBackgroundView;
import com.lieni.liexiaotao.web.resume.view.TrainingExperienceView;
import com.lieni.liexiaotao.web.resume.view.WorkExperienceView;
import com.lieni.resume.bean.VerifyResult;
import com.lieni.resume.cv.remote.ICvEducationExperienceRemoteService;
import com.lieni.resume.cv.remote.ICvJobIntentionRemoteService;
import com.lieni.resume.cv.remote.ICvLanguageAbilityRemoteService;
import com.lieni.resume.cv.remote.ICvProductRemoteService;
import com.lieni.resume.cv.remote.ICvProjectExperienceRemoteService;
import com.lieni.resume.cv.remote.ICvResumeInfoRemoteService;
import com.lieni.resume.cv.remote.ICvTrainingExperienceRemoteService;
import com.lieni.resume.cv.remote.ICvWorkExperienceRemoteService;
import com.lieni.resume.model.CvEducationExperience;
import com.lieni.resume.model.CvJobIntention;
import com.lieni.resume.model.CvLanguageAbility;
import com.lieni.resume.model.CvProduct;
import com.lieni.resume.model.CvProjectExperience;
import com.lieni.resume.model.CvResumeInfo;
import com.lieni.resume.model.CvTrainingExperience;
import com.lieni.resume.model.CvWorkExperience;
import com.lieni.resume.model.Resume;
import com.lieni.resume.model.ResumeBackgroundSurvey;
import com.lieni.resume.model.ResumeEducationBackground;
import com.lieni.resume.model.ResumeReport;
import com.lieni.resume.model.ResumeWorkBackground;
import com.lieni.resume.model.ResumeWorkBgRespondent;
import com.lieni.resume.model.VersionCvEducationExperience;
import com.lieni.resume.model.VersionCvJobIntention;
import com.lieni.resume.model.VersionCvLanguageAbility;
import com.lieni.resume.model.VersionCvProduct;
import com.lieni.resume.model.VersionCvProjectExperience;
import com.lieni.resume.model.VersionCvResumeInfo;
import com.lieni.resume.model.VersionCvTrainingExperience;
import com.lieni.resume.model.VersionCvWorkExperience;
import com.lieni.resume.model.VersionResumeBackgroundSurvey;
import com.lieni.resume.model.VersionResumeEducationBackground;
import com.lieni.resume.model.VersionResumeReport;
import com.lieni.resume.model.VersionResumeWorkBackground;
import com.lieni.resume.model.VersionResumeWorkBgRespondent;
import com.lieni.resume.remote.IResumeBackgroundRemoteService;
import com.lieni.resume.remote.IResumeEducationBackgroundRemoteService;
import com.lieni.resume.remote.IResumeRemoteService;
import com.lieni.resume.remote.IResumeReportRemoteService;
import com.lieni.resume.remote.IResumeWorkBackgroundRemoteService;
import com.lieni.resume.remote.IResumeWorkBgRespondentRemoteService;
import com.lieni.resume.version.remote.ICvVersionResumeContentRemoteService;

@Service
public class ResumeContentService implements IResumeContentService {

    private static String ORDER_BY_COLUMN = "CREATE_TIME DESC";

    @Autowired
    private ICvResumeInfoRemoteService cvResumeInfoRemoteService;
    @Autowired
    private ICvJobIntentionRemoteService cvJobIntentionRemoteService;
    @Autowired
    private ICvWorkExperienceRemoteService cvWorkExperienceRemoteService;
    @Autowired
    private ICvEducationExperienceRemoteService cvEducationExperienceRemoteService;
    @Autowired
    private ICvProjectExperienceRemoteService cvProjectExperienceRemoteService;
    @Autowired
    private ICvLanguageAbilityRemoteService cvLanguageAbilityRemoteService;
    @Autowired
    private ICvTrainingExperienceRemoteService cvTrainingExperienceRemoteService;
    @Autowired
    private ICvProductRemoteService cvProductRemoteService;
    @Autowired
    private IResumeReportRemoteService resumeReportRemoteService;
    @Autowired
    private IResumeBackgroundRemoteService resumeBackgroundRemoteService;
    @Autowired
    private IResumeEducationBackgroundRemoteService resumeEducationBackgroundRemoteService;
    @Autowired
    private IResumeWorkBackgroundRemoteService resumeWorkBackgroundRemoteService;
    @Autowired
    private IResumePurchaseRemoteService resumePurchaseRemoteService;
    @Autowired
    private IResumeCollectRemoteService resumeCollectRemoteService;
    @Autowired
    private IResumeWorkBgRespondentRemoteService resumeWorkBgRespondentRemoteService;
    @Autowired
    private ICvVersionResumeContentRemoteService cvVersionResumeContentRemoteService;
    @Autowired
    private IResumeRemoteService resumeRemoteService;
    @Autowired
    private IResumeAppealRemoteService resumeAppealRemoteService;

    @Override
    public ResumeInfoView getResumeInfoViewByUserIdAndResumeId(String userId, String resumeId) {
        ResumeInfoView view = getResumeInfoView(userId, resumeId);
        if (null == view) {
            return null;
        }
        // 没有购买或无效的订单隐藏个人信息
        if ((view.getBought() != null && !view.getBought() || (view.getAppealResult() != null
                && view.getAppealResult() == AppealResultEnum.AGGREAPPEAL.getValue()))) {
            view.setName(StringUtils.EMPTY);
            view.setPhone(StringUtils.EMPTY);
            view.setEmail(StringUtils.EMPTY);
        }
        // 是否收藏
        view.setCollected(resumeCollectRemoteService.exist(userId, resumeId));
        // 是否已申诉
        view.setAppealed(
                view.getPurchaseId() != null ? (resumeAppealRemoteService.exist(view.getPurchaseId())) : false);
        return view;
    }

    @Override
    public ResumeInfoView getResumeInfoView(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return null;
        }
        ResumeInfoView view = null;
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            view = getNewestResumeInfo(userId, resumeId);
        } else {
            // 获取购买时对应的简历版本的信息
            VersionCvResumeInfo versionCvResumeInfo = cvVersionResumeContentRemoteService
                    .getResumeInfoByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
            if (null == versionCvResumeInfo) {
                return null;
            }
            view = new ResumeInfoView(versionCvResumeInfo);
        }
        view.setBought(resumePurchaseRecord != null);
        view.setPurchaseId(resumePurchaseRecord != null ? resumePurchaseRecord.getId() : null);
        view.setAppealResult(resumePurchaseRecord != null ? resumePurchaseRecord.getAppealResult() : null);
        return view;
    }

    private boolean checkParams(String userId, String resumeId) {
        if (StringUtils.isBlank(userId) || StringUtils.isBlank(resumeId)) {
            return false;
        }
        return true;
    }

    private ResumeInfoView getNewestResumeInfo(String userId, String resumeId) {
        CvResumeInfo resumeInfo = cvResumeInfoRemoteService.getById(resumeId);
        if (resumeInfo == null) {
            return null;
        }
        return new ResumeInfoView(resumeInfo);
    }

    private boolean isNewestVersion(String resumeId, Integer version) {
        if (StringUtils.isBlank(resumeId) || null == version || version < 0) {
            return true;
        }
        Resume resume = resumeRemoteService.getResumeByResumeId(resumeId);
        if (null == resume) {
            return false;
        }
        if (null == resume.getVersion() || resume.getVersion() < 0) {
            return false;
        }
        if (resume.getVersion() == version) {
            return true;
        }
        return false;
    }

    @Override
    public ResumeReportView getResumeReportViewByUserIdAndResumeId(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return null;
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId, resumeId,
                AppealResultEnum.DEFAULT, AppealResultEnum.REJECTAPPEAL);
        // 没有购买无权查看
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0) {
            return null;
        }
        if (isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            ResumeReport resumeReport = resumeReportRemoteService.getNewestByResumeId(resumeId);
            if (null == resumeReport) {
                return null;
            }
            return new ResumeReportView(resumeReport);
        }
        // 获取购买时对应的简历版本的信息
        VersionResumeReport versionResumeReport = cvVersionResumeContentRemoteService
                .getResumeReportByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (null == versionResumeReport) {
            return null;
        }
        return new ResumeReportView(versionResumeReport);
    }

    @Override
    public BackgroungSurveyView getBackgroungSurveysByUserIdAndResumeId(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return null;
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId, resumeId,
                AppealResultEnum.DEFAULT, AppealResultEnum.REJECTAPPEAL);
        // 没有购买无权查看
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0) {
            return null;
        }
        // 最新版本
        if (isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            ResumeBackgroundSurvey resumeBackgroundSurvey = resumeBackgroundRemoteService.getNewestByResumeId(resumeId);
            if (null == resumeBackgroundSurvey) {
                return null;
            }
            BackgroungSurveyView view = new BackgroungSurveyView();
            // 工作经历背调
            List<ResumeWorkBackground> resumeWorkBackgrounds = resumeWorkBackgroundRemoteService
                    .listByBackgroundSurveyId(resumeBackgroundSurvey.getId(), resumeId, 0, 4);
            List<ResumeWorkBackgroundView> workBackgroundViews = new ArrayList<ResumeWorkBackgroundView>();
            // 背调联系人
            List<Long> resumeWorkBackgroundIds = getResumeWorkBackgroundIds(resumeWorkBackgrounds);
            Map<Long, List<ResumeWorkBgRespondent>> resumeWorkBgRespondentMap = resumeWorkBgRespondentRemoteService
                    .mapByWorkBgIds(resumeWorkBackgroundIds, ORDER_BY_COLUMN);
            for (ResumeWorkBackground resumeWorkBackground : resumeWorkBackgrounds) {
                workBackgroundViews.add(new ResumeWorkBackgroundView(resumeWorkBackground,
                        MapUtils.isNotEmpty(resumeWorkBgRespondentMap)
                                ? resumeWorkBgRespondentMap.get(resumeWorkBackground.getId()) : null));
            }
            view.setWorkBackgrounds(workBackgroundViews);
            // 教育经历背调
            List<ResumeEducationBackground> resumeEducationBackgrounds = resumeEducationBackgroundRemoteService
                    .listByBackgroundSurveyId(resumeBackgroundSurvey.getId(), resumeId, 0, 4);
            List<ResumeEducationBackgroundView> educationBackgroundViews = new ArrayList<ResumeEducationBackgroundView>();
            for (ResumeEducationBackground resumeEducationBackground : resumeEducationBackgrounds) {
                educationBackgroundViews.add(new ResumeEducationBackgroundView(resumeEducationBackground));
            }
            view.setEducationBackgrounds(educationBackgroundViews);
            return view;
        }
        // 获取购买时对应的简历版本的信息
        VersionResumeBackgroundSurvey versionResumeBackgroundSurvey = cvVersionResumeContentRemoteService
                .getBackgroundSurveyByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (null == versionResumeBackgroundSurvey) {
            return null;
        }
        BackgroungSurveyView view = new BackgroungSurveyView();
        // 工作经历背调
        List<VersionResumeWorkBackground> versionResumeWorkBackgrounds = cvVersionResumeContentRemoteService
                .listWorkBackgroundByBackgroundSurveyId(versionResumeBackgroundSurvey.getId(), 0, 4);
        List<ResumeWorkBackgroundView> workBackgroundViews = new ArrayList<ResumeWorkBackgroundView>();
        // 所有工作背调id
        List<Long> versionResumeWorkBackgroundIds = getVersionResumeWorkBackgroundIds(versionResumeWorkBackgrounds);
        // 背调联系人
        Map<Long, List<VersionResumeWorkBgRespondent>> versionResumeWorkBgRespondentMap = cvVersionResumeContentRemoteService
                .mapByWorkBackgroundIds(versionResumeWorkBackgroundIds);
        for (VersionResumeWorkBackground versionResumeWorkBackground : versionResumeWorkBackgrounds) {
            workBackgroundViews.add(new ResumeWorkBackgroundView(versionResumeWorkBackground,
                    MapUtils.isNotEmpty(versionResumeWorkBgRespondentMap)
                            ? versionResumeWorkBgRespondentMap.get(versionResumeWorkBackground.getId()) : null));
        }
        view.setWorkBackgrounds(workBackgroundViews);
        // 教育经历背调
        List<VersionResumeEducationBackground> versionResumeEducationBackgrounds = cvVersionResumeContentRemoteService
                .listEducationBackgroundByBackgroundSurveyId(versionResumeBackgroundSurvey.getId(), 0, 4);
        List<ResumeEducationBackgroundView> educationBackgroundViews = new ArrayList<ResumeEducationBackgroundView>();
        for (VersionResumeEducationBackground versionResumeEducationBackground : versionResumeEducationBackgrounds) {
            educationBackgroundViews.add(new ResumeEducationBackgroundView(versionResumeEducationBackground));
        }
        view.setEducationBackgrounds(educationBackgroundViews);
        return view;
    }

    private List<Long> getResumeWorkBackgroundIds(List<ResumeWorkBackground> resumeWorkBackgrounds) {
        List<Long> ids = new ArrayList<Long>();
        for (ResumeWorkBackground resumeWorkBackground : resumeWorkBackgrounds) {
            ids.add(resumeWorkBackground.getId());
        }
        return ids;
    }

    private List<Long> getVersionResumeWorkBackgroundIds(
            List<VersionResumeWorkBackground> versionResumeWorkBackgrounds) {
        List<Long> ids = new ArrayList<Long>();
        for (VersionResumeWorkBackground versionResumeWorkBackground : versionResumeWorkBackgrounds) {
            ids.add(versionResumeWorkBackground.getId());
        }
        return ids;
    }

    @Override
    public JobIntentionView getJobIntentionViewByUserIdAndResumeId(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return null;
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        // 没有购买无权查看
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            CvJobIntention cvJobIntention = cvJobIntentionRemoteService.getByResumeId(resumeId);
            if (null == cvJobIntention) {
                return null;
            }
            return new JobIntentionView(cvJobIntention);
        }
        // 获取购买时对应的简历版本的信息
        VersionCvJobIntention versionCvJobIntention = cvVersionResumeContentRemoteService
                .getJobIntentionByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (null == versionCvJobIntention) {
            return null;
        }
        return new JobIntentionView(versionCvJobIntention);
    }

    @Override
    public List<WorkExperienceView> listWorkExperience(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return Collections.emptyList();
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        // 获取最新版本内容
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            List<CvWorkExperience> cvWorkExperiences = cvWorkExperienceRemoteService.listByResumeId(resumeId);
            if (CollectionUtils.isEmpty(cvWorkExperiences)) {
                return Collections.emptyList();
            }
            List<WorkExperienceView> views = new ArrayList<WorkExperienceView>();
            for (CvWorkExperience cvWorkExperience : cvWorkExperiences) {
                views.add(new WorkExperienceView(cvWorkExperience));
            }
            return views;
        }
        // 获取购买时对应的简历版本的信息
        List<VersionCvWorkExperience> versionCvWorkExperiences = cvVersionResumeContentRemoteService
                .listWorkExperienceByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (CollectionUtils.isEmpty(versionCvWorkExperiences)) {
            return Collections.emptyList();
        }
        List<WorkExperienceView> views = new ArrayList<WorkExperienceView>();
        for (VersionCvWorkExperience versionCvWorkExperience : versionCvWorkExperiences) {
            views.add(new WorkExperienceView(versionCvWorkExperience));
        }
        return views;
    }

    @Override
    public List<EducationExperienceView> listEducationExperience(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return Collections.emptyList();
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        // 获取最新版本内容
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            List<CvEducationExperience> cvEducationExperiences = cvEducationExperienceRemoteService.list(resumeId);
            if (CollectionUtils.isEmpty(cvEducationExperiences)) {
                return Collections.emptyList();
            }
            List<EducationExperienceView> views = new ArrayList<EducationExperienceView>();
            for (CvEducationExperience cvEducationExperience : cvEducationExperiences) {
                views.add(new EducationExperienceView(cvEducationExperience));
            }
            return views;
        }
        // 获取购买时对应的简历版本的信息
        List<VersionCvEducationExperience> versionCvEducationExperiences = cvVersionResumeContentRemoteService
                .listEducationExperienceByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (CollectionUtils.isEmpty(versionCvEducationExperiences)) {
            return Collections.emptyList();
        }
        List<EducationExperienceView> views = new ArrayList<EducationExperienceView>();
        for (VersionCvEducationExperience versionCvEducationExperience : versionCvEducationExperiences) {
            views.add(new EducationExperienceView(versionCvEducationExperience));
        }
        return views;
    }

    @Override
    public List<ProjectExperienceView> listProjectExperience(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return Collections.emptyList();
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        // 获取最新版本内容
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            List<CvProjectExperience> cvProjectExperiences = cvProjectExperienceRemoteService.listByResumeId(resumeId);
            if (CollectionUtils.isEmpty(cvProjectExperiences)) {
                return Collections.emptyList();
            }
            List<ProjectExperienceView> views = new ArrayList<ProjectExperienceView>();
            for (CvProjectExperience cvEducationExperience : cvProjectExperiences) {
                views.add(new ProjectExperienceView(cvEducationExperience));
            }
            return views;
        }
        // 获取购买时对应的简历版本的信息
        List<VersionCvProjectExperience> versionCvProjectExperiences = cvVersionResumeContentRemoteService
                .listProjectExperienceByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (CollectionUtils.isEmpty(versionCvProjectExperiences)) {
            return Collections.emptyList();
        }
        List<ProjectExperienceView> views = new ArrayList<ProjectExperienceView>();
        for (VersionCvProjectExperience versionCvProjectExperience : versionCvProjectExperiences) {
            views.add(new ProjectExperienceView(versionCvProjectExperience));
        }
        return views;
    }

    @Override
    public List<LanguageView> listLanguageAbility(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return Collections.emptyList();
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        // 获取最新版本内容
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            List<CvLanguageAbility> cvLanguageAbilitys = cvLanguageAbilityRemoteService.listByResumeId(resumeId);
            if (CollectionUtils.isEmpty(cvLanguageAbilitys)) {
                return Collections.emptyList();
            }
            List<LanguageView> views = new ArrayList<LanguageView>();
            for (CvLanguageAbility cvLanguageAbility : cvLanguageAbilitys) {
                views.add(new LanguageView(cvLanguageAbility));
            }
            return views;
        }
        // 获取购买时对应的简历版本的信息
        List<VersionCvLanguageAbility> versionCvLanguageAbilitys = cvVersionResumeContentRemoteService
                .listLanguageAbilityByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (CollectionUtils.isEmpty(versionCvLanguageAbilitys)) {
            return Collections.emptyList();
        }
        List<LanguageView> views = new ArrayList<LanguageView>();
        for (VersionCvLanguageAbility versionCvLanguageAbility : versionCvLanguageAbilitys) {
            views.add(new LanguageView(versionCvLanguageAbility));
        }
        return views;
    }

    @Override
    public List<TrainingExperienceView> listTrainingExperience(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return Collections.emptyList();
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        // 获取最新版本内容
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            List<CvTrainingExperience> cvTrainingExperiences = cvTrainingExperienceRemoteService
                    .listByResumeId(resumeId);
            if (CollectionUtils.isEmpty(cvTrainingExperiences)) {
                return Collections.emptyList();
            }
            List<TrainingExperienceView> views = new ArrayList<TrainingExperienceView>();
            for (CvTrainingExperience cvTrainingExperience : cvTrainingExperiences) {
                views.add(new TrainingExperienceView(cvTrainingExperience));
            }
            return views;
        }
        // 获取购买时对应的简历版本的信息
        List<VersionCvTrainingExperience> versionCvTrainingExperiences = cvVersionResumeContentRemoteService
                .listTrainingExperienceByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (CollectionUtils.isEmpty(versionCvTrainingExperiences)) {
            return Collections.emptyList();
        }
        List<TrainingExperienceView> views = new ArrayList<TrainingExperienceView>();
        for (VersionCvTrainingExperience versionCvTrainingExperience : versionCvTrainingExperiences) {
            views.add(new TrainingExperienceView(versionCvTrainingExperience));
        }
        return views;
    }

    @Override
    public List<ProductView> listProduct(String userId, String resumeId) {
        if (!checkParams(userId, resumeId)) {
            return Collections.emptyList();
        }
        // 是否已购买
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId,
                resumeId);
        // 获取最新版本内容
        if (null == resumePurchaseRecord || null == resumePurchaseRecord.getResumeVersion()
                || resumePurchaseRecord.getResumeVersion() < 0
                || isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion())) {
            List<CvProduct> cvProducts = cvProductRemoteService.listByResumeId(resumeId);
            if (CollectionUtils.isEmpty(cvProducts)) {
                return Collections.emptyList();
            }
            List<ProductView> views = new ArrayList<ProductView>();
            for (CvProduct cvProduct : cvProducts) {
                views.add(new ProductView(cvProduct));
            }
            return views;
        }
        // 获取购买时对应的简历版本的信息
        List<VersionCvProduct> versionCvProducts = cvVersionResumeContentRemoteService
                .listProductByResumeIdAndVersion(resumeId, resumePurchaseRecord.getResumeVersion());
        if (CollectionUtils.isEmpty(versionCvProducts)) {
            return Collections.emptyList();
        }
        List<ProductView> views = new ArrayList<ProductView>();
        for (VersionCvProduct versionCvProduct : versionCvProducts) {
            views.add(new ProductView(versionCvProduct));
        }
        return views;
    }

    @Override
    public boolean checkUpdate(String userId, String resumeId) {
        if (StringUtils.isBlank(userId) || StringUtils.isBlank(resumeId)) {
            return false;
        }
        ResumePurchaseRecord resumePurchaseRecord = resumePurchaseRemoteService.getByUserIdAndResumeId(userId, resumeId,
                AppealResultEnum.DEFAULT, AppealResultEnum.REJECTAPPEAL);
        if (null == resumePurchaseRecord) {
            return false;
        }
        return !isNewestVersion(resumeId, resumePurchaseRecord.getResumeVersion());
    }

    @Override
    public boolean isExistReport(String resumeId) {
        if (StringUtils.isBlank(resumeId)) {
            return false;
        }
        return resumeReportRemoteService.countByResumeId(resumeId) > 0;
    }

    @Override
    public List<ResumeWorkBackgroundView> listResumeWorkBackgroundSimple(long backgroundId, String resumeId) {
        List<ResumeWorkBackground> resumeWorkBackgrounds = resumeWorkBackgroundRemoteService
                .listByBackgroundSurveyId(backgroundId, resumeId, 0, 4);
        // 绑定参数，只显示简要内容隐藏背调结果
        return bindWorkBackgroundSurveys(resumeWorkBackgrounds);
    }

    private List<ResumeEducationBackgroundView> bindEducationBackgroundSurveys(
            List<ResumeEducationBackground> resumeEducationBackgrounds) {
        List<ResumeEducationBackgroundView> educationBackgroundSurveys = new ArrayList<ResumeEducationBackgroundView>();
        for (ResumeEducationBackground resumeEducationBackground : resumeEducationBackgrounds) {
            if (null == resumeEducationBackground.getRealed()
                    || resumeEducationBackground.getRealed() != VerifyResult.TRUE.getValue()) {
                continue;
            }
            educationBackgroundSurveys.add(new ResumeEducationBackgroundView(resumeEducationBackground.getStartYear(),
                    resumeEducationBackground.getStartMonth(), resumeEducationBackground.getEndYear(),
                    resumeEducationBackground.getEndMonth(), resumeEducationBackground.getDegree(),
                    resumeEducationBackground.getGraduationSchool(), resumeEducationBackground.getProfessional()));
        }
        return educationBackgroundSurveys;
    }

    private List<ResumeWorkBackgroundView> bindWorkBackgroundSurveys(List<ResumeWorkBackground> resumeWorkBackgrounds) {
        List<ResumeWorkBackgroundView> workBackgroundSurveys = new ArrayList<ResumeWorkBackgroundView>();
        for (ResumeWorkBackground resumeWorkBackground : resumeWorkBackgrounds) {
            workBackgroundSurveys.add(new ResumeWorkBackgroundView(resumeWorkBackground.getStartYear(),
                    resumeWorkBackground.getStartMonth(), resumeWorkBackground.getEndYear(),
                    resumeWorkBackground.getEndMonth(), resumeWorkBackground.getCompany(),
                    resumeWorkBackground.getJob()));
        }
        return workBackgroundSurveys;

    }

    @Override
    public List<ResumeEducationBackgroundView> listResumeEducationBackgroundSimple(long backgroundId, String resumeId) {
        List<ResumeEducationBackground> resumeEducationBackgrounds = resumeEducationBackgroundRemoteService
                .listByBackgroundSurveyId(backgroundId, resumeId, 0, 4);
        // 绑定参数，只显示简要内容隐藏背调结果
        return bindEducationBackgroundSurveys(resumeEducationBackgrounds);
    }

}
